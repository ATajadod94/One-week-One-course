import logging
mode = 'development'
log_file = 'myapp.log'
if mode == 'development':
    log_level = logging.DEBUG
    log_mode = 'w'
else:
    log_level = logging.WARNING
    log_mode = 'a'

logging.basicConfig(level = log_level, filename = log_file, filemode = log_mode)
logging.debug('debug message')
logging.warning(' look out!')
logging.critical(' we have a problem here ')
