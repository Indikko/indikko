from django.test import TestCase
from .models import IndicoUser, Endorsment, Relationship, Subscription,WorkerEvaluation
from .utils import get_new_subscription_title,get_new_subscription_body,resolve_worker_evaluation_url
from django.core.urlresolvers import reverse

class EndorsmentTests (TestCase):

    def tearDown(self):
        IndicoUser.objects.all().delete()

    def test_a_hire_can_endorse_a_worker (self):
        hirer = IndicoUser.objects.create_contractor_user ("hirer@mail.com","foopassword")
        worker = IndicoUser.objects.create_worker_user ("worker@mail.com","foopassword")

        Endorsment.apply (hirer, worker)

        # Reloading worker data
        expected = 1
        worker = IndicoUser.objects.get (email = "worker@mail.com")
        self.assertEqual (worker.endorsements, expected)

    def test_multiple_hirers_can_endorse_the_same_worker (self):
        worker = IndicoUser.objects.create_worker_user ("highendorse@mail.com","foopassword")
        hirer_count = 15
        expected = hirer_count

        for x in range (0, hirer_count):
            hirer_name = "hirer{0}@mail.com".format(x)
            hirer = IndicoUser.objects.create_contractor_user (hirer_name,"foopassword")
            Endorsment.apply (hirer, worker)

        # Reloading worker data
        worker = IndicoUser.objects.get (email = "highendorse@mail.com")
        self.assertEqual (worker.endorsements, expected)

    def test_a_user_can_have_multiple_facebook_friends (self):
        user_one = IndicoUser.objects.create_contractor_user ("user_one@mail.com","123456")

        user_2 = IndicoUser.objects.create_contractor_user ("user_3@mail.com","123456")
        user_3 = IndicoUser.objects.create_contractor_user ("user_4@mail.com","123456")
        user_4 = IndicoUser.objects.create_contractor_user ("user_5@mail.com","123456")
        user_5 = IndicoUser.objects.create_contractor_user ("user_6@mail.com","123456")
        user_6 = IndicoUser.objects.create_contractor_user ("user_7@mail.com","123456")

        r = Relationship (user_one = user_one)
        r.save()

        r.friends.add (user_2)
        r.friends.add (user_3)
        r.friends.add (user_4)
        r.save()

        self.assertEqual(r.friends.count(), 3)

    def test_find_friends (self):
        user_one = IndicoUser.objects.create_contractor_user ("friendly@mail.com","123456")
        friend1 = IndicoUser.objects.create_contractor_user ("friend1@mail.com","123456")
        friend2 = IndicoUser.objects.create_contractor_user ("friend2@mail.com","123456")

        friend1.facebook_id = 10204309310127514
        friend2.facebook_id = 1751316991755139
        friend1.save()
        friend2.save()

        facebook_friend_list = '{"data":[{"id":"10204309310127514","name":"Alexandre Soria","picture":{"data":{"is_silhouette":false,"url":"https:\/\/fbcdn-profile-a.akamaihd.net\/hprofile-ak-xaf1\/v\/t1.0-1\/p50x50\/417880_4401046358935_1729498988_n.jpg?oh=5c9412854b61a3357b22b1e5124a69e4&oe=578A2303&__gda__=1464579961_0f2c7d385a5c17951f509369c07140d0"}}},{"id":"1751316991755139","name":"Claudio Sampaio","picture":{"data":{"is_silhouette":false,"url":"https:\/\/fbcdn-profile-a.akamaihd.net\/hprofile-ak-xpa1\/v\/t1.0-1\/p50x50\/10392358_1765456377007867_4446082509910602523_n.jpg?oh=7d29fe2992a49258312c109a324192de&oe=5787996E&__gda__=1468511057_8f7b04b5287e936c9932194b20f6f7d0"}}}],"paging":{"next":"https:\/\/graph.facebook.com\/v2.5\/878041928930941\/friends?fields=id,name,location,picture&access_token=CAAPCx8oZBoxoBAMCAZBN5ZAf7r3bPZA5dFiHMcUBe7LVKHEqCdPoNbt3ZAgPHFF0QgZAf6PmKZArUOepkYFqSQje4fbyHbfZAWTe8MnqLJHIn1mfsa9QZBTfK3jVN7ZBw7It2ZCQYd1MvHK787wxFW2xIgXKdlo5SfRXqfRV2h2FMijVHfagyDYFywoLSjvGteikBcWktYSaZBwZAbyU1Ry4e4T1T&limit=25&offset=25&__after_id=enc_AdD8JnyxjTZBBBBMXl5CDUBTpLLAlNsmLpasqIMsIdDfj3yXuvZAGZAoihLXhA8RcsYPreWvuC28zWIu2rkB1rcorjj"},"summary":{"total_count":273}}'
        r = Relationship.get_instance (user_one = user_one)
        r.find_friends (facebook_friend_list)
        self.assertEqual(r.friends.count(), 2)

    def test_two_user_can_share_same_friendship(self):
        user_one = IndicoUser.objects.create_contractor_user ("user_one@mail.com","123456")
        user_two = IndicoUser.objects.create_contractor_user ("user_two@mail.com","123456")

        friend1 = IndicoUser.objects.create_contractor_user ("friend10@mail.com","123456")
        friend2 = IndicoUser.objects.create_contractor_user ("friend20@mail.com","123456")

        friend1.facebook_id = 1020
        friend2.facebook_id = 1751
        friend1.save()
        friend2.save()

        shared_friend_list = '{"data":[{"id":"1020","name":"Alexandre Soria","picture":{"data":{"is_silhouette":false,"url":"https:\/\/fbcdn-profile-a.akamaihd.net\/hprofile-ak-xaf1\/v\/t1.0-1\/p50x50\/417880_4401046358935_1729498988_n.jpg?oh=5c9412854b61a3357b22b1e5124a69e4&oe=578A2303&__gda__=1464579961_0f2c7d385a5c17951f509369c07140d0"}}},{"id":"1751","name":"Claudio Sampaio","picture":{"data":{"is_silhouette":false,"url":"https:\/\/fbcdn-profile-a.akamaihd.net\/hprofile-ak-xpa1\/v\/t1.0-1\/p50x50\/10392358_1765456377007867_4446082509910602523_n.jpg?oh=7d29fe2992a49258312c109a324192de&oe=5787996E&__gda__=1468511057_8f7b04b5287e936c9932194b20f6f7d0"}}}],"paging":{"next":"https:\/\/graph.facebook.com\/v2.5\/878041928930941\/friends?fields=id,name,location,picture&access_token=CAAPCx8oZBoxoBAMCAZBN5ZAf7r3bPZA5dFiHMcUBe7LVKHEqCdPoNbt3ZAgPHFF0QgZAf6PmKZArUOepkYFqSQje4fbyHbfZAWTe8MnqLJHIn1mfsa9QZBTfK3jVN7ZBw7It2ZCQYd1MvHK787wxFW2xIgXKdlo5SfRXqfRV2h2FMijVHfagyDYFywoLSjvGteikBcWktYSaZBwZAbyU1Ry4e4T1T&limit=25&offset=25&__after_id=enc_AdD8JnyxjTZBBBBMXl5CDUBTpLLAlNsmLpasqIMsIdDfj3yXuvZAGZAoihLXhA8RcsYPreWvuC28zWIu2rkB1rcorjj"},"summary":{"total_count":273}}'

        r1 = Relationship.get_instance (user_one = user_one)
        r1.find_friends (shared_friend_list)

        r2 = Relationship.get_instance (user_one = user_two)
        r2.find_friends (shared_friend_list)

        self.assertEqual(r1.friends.count(), r2.friends.count())

    def test_get_friends_that_has_endorsed_worker(self):
        worker = IndicoUser.objects.create_worker_user ("judite@gmail.com", "123456")

        hirer = IndicoUser.objects.create_contractor_user ("user_one@mail.com","123456")
        friend1 = IndicoUser.objects.create_contractor_user ("friend10@mail.com","123456")
        friend2 = IndicoUser.objects.create_contractor_user ("friend20@mail.com","123456")

        friend1.facebook_id = 1020
        friend2.facebook_id = 1751
        friend1.save()
        friend2.save()

        shared_friend_list = '{"data":[{"id":"1020","name":"Alexandre Soria","picture":{"data":{"is_silhouette":false,"url":"https:\/\/fbcdn-profile-a.akamaihd.net\/hprofile-ak-xaf1\/v\/t1.0-1\/p50x50\/417880_4401046358935_1729498988_n.jpg?oh=5c9412854b61a3357b22b1e5124a69e4&oe=578A2303&__gda__=1464579961_0f2c7d385a5c17951f509369c07140d0"}}},{"id":"1751","name":"Claudio Sampaio","picture":{"data":{"is_silhouette":false,"url":"https:\/\/fbcdn-profile-a.akamaihd.net\/hprofile-ak-xpa1\/v\/t1.0-1\/p50x50\/10392358_1765456377007867_4446082509910602523_n.jpg?oh=7d29fe2992a49258312c109a324192de&oe=5787996E&__gda__=1468511057_8f7b04b5287e936c9932194b20f6f7d0"}}}],"paging":{"next":"https:\/\/graph.facebook.com\/v2.5\/878041928930941\/friends?fields=id,name,location,picture&access_token=CAAPCx8oZBoxoBAMCAZBN5ZAf7r3bPZA5dFiHMcUBe7LVKHEqCdPoNbt3ZAgPHFF0QgZAf6PmKZArUOepkYFqSQje4fbyHbfZAWTe8MnqLJHIn1mfsa9QZBTfK3jVN7ZBw7It2ZCQYd1MvHK787wxFW2xIgXKdlo5SfRXqfRV2h2FMijVHfagyDYFywoLSjvGteikBcWktYSaZBwZAbyU1Ry4e4T1T&limit=25&offset=25&__after_id=enc_AdD8JnyxjTZBBBBMXl5CDUBTpLLAlNsmLpasqIMsIdDfj3yXuvZAGZAoihLXhA8RcsYPreWvuC28zWIu2rkB1rcorjj"},"summary":{"total_count":273}}'
        r1 = Relationship.get_instance (user_one = hirer)
        r1.find_friends (shared_friend_list)

        Endorsment.apply (friend1, worker)
        Endorsment.apply (friend2, worker)

        queryset = Endorsment.friends_that_recommends(hirer, worker)

        self.assertEqual(queryset[0].hirer.email, "friend10@mail.com")
        self.assertEqual(queryset[1].hirer.email, "friend20@mail.com")


class UtilsTests (TestCase):

    def test_get_new_subscription_email_title(self):
        user = IndicoUser()

        user.first_name = 'Claudete'
        user.last_name = 'Sampaio'

        email_title = get_new_subscription_title(user)
        self.assertEqual (email_title, "Claudete Sampaio solicitou uma conta no Indico")

    def test_get_new_subscription_body(self):
        expected = "Olá Adminsitrador,\n\no usuário Claudete Sampaio solicitou uma inscrição de trabalhador no Indico. Para avaliar a inscrição dele acesso o cadastro no link:\n\nhttp://indico.com/admin/subscription/1/"

        user = IndicoUser()

        user.first_name = 'Claudete'
        user.last_name = 'Sampaio'

        subscription = Subscription(id=1)
        subscription.candidate = user

        encoded_url = get_new_subscription_body (user, subscription)
        self.assertEqual (encoded_url, expected)

    """
    def test_resolve_worker_evaluation_url(self):
        user = IndicoUser(id=1000)
        result = resolve_worker_evaluation_url(user)
        expected = "http://indico.com/hirer/evaluate/1000/"

        self.assertEqual (result, expected)
    """


class IndicoUserTests(TestCase):
    def test_calculate_user_rate(self):
        hirer1 = IndicoUser.objects.create_contractor_user ("hirer1@mail.com","foopassword")
        hirer2 = IndicoUser.objects.create_contractor_user ("hirer2@mail.com","foopassword")
        hirer3 = IndicoUser.objects.create_contractor_user ("hirer3@mail.com","foopassword")

        worker = IndicoUser.objects.create_worker_user ("worker@mail.com","foopassword")

        evaluation = WorkerEvaluation.create(hirer1, worker)
        evaluation.punctuality = 2
        evaluation.quality = 2
        evaluation.trust = 2
        evaluation.cost_benefit = 2
        evaluation.save()

        self.assertTrue(2, worker.rate)

        evaluation = WorkerEvaluation.create(hirer2, worker)
        evaluation.punctuality = 4
        evaluation.quality = 2
        evaluation.trust = 4
        evaluation.cost_benefit = 4
        evaluation.save()

        self.assertTrue(3, worker.rate)

        evaluation = WorkerEvaluation.create(hirer3, worker)
        evaluation.punctuality = 1
        evaluation.quality = 2
        evaluation.trust = 1
        evaluation.cost_benefit = 1
        evaluation.save()

        self.assertTrue(1.666666667, worker.rate)
