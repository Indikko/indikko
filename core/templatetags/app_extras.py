from django import template

register = template.Library()

@register.filter(name='addclass')
def add_class(value, arg):
    return value.as_widget(attrs={'class':arg})

@register.filter(name='placeholder')
def add_placeholder(value, arg):
    return value.as_widget(attrs={'class':'form-control input-lg', 'placeholder':arg})

@register.filter(name='placeholdermd')
def add_placeholder_md(value, arg):
    return value.as_widget(attrs={'placeholder':arg})

@register.filter_function
def attr(obj, arg1):
    att, value = arg1.split("=")
    obj.field.widget.attrs[att] = value
    return obj

@register.simple_tag
def increment_value(value):
    value = value + 1
    return value


class IncrementVarNode(template.Node):

	def __init__(self, var_name, mtype):
		self.var_name = var_name
		self.mtype = mtype

	def render(self,context):
		if self.mtype == 1:
			value = context[self.var_name]
			context[self.var_name] = value + 1
		elif self.mtype == 0:
			value = context[self.var_name]
			context[self.var_name] = 0
		return u""

def reset_var(parser, token):
    parts = token.split_contents()
    if len(parts) < 2:
        raise template.TemplateSyntaxError("'increment' tag must be of the form:  {% increment <var_name> %}")
    return IncrementVarNode(parts[1], 0)

def increment_var(parser, token):
    parts = token.split_contents()
    if len(parts) < 2:
        raise template.TemplateSyntaxError("'increment' tag must be of the form:  {% increment <var_name> %}")
    return IncrementVarNode(parts[1], 1)

register.tag('increment', increment_var)
register.tag('reset', reset_var)