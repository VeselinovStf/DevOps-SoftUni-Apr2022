def msg(text):
    '''
    Display a message with <text> in upper case
    CLI Example:
    .. code-block:: bash
        salt '*' demo.msg 'Hello Salt! :)'
    '''
    return text.upper()
  
