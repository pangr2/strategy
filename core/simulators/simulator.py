from abc import abstractmethod
from functools import wraps


def get_simulator(cfg):
    simulator = BaseSimulator()
    return simulator


class DataAccessValidator:

    def __call__(self, func):
        @wraps(func)
        def wrapper(instance, *args, **kwargs):
            # Assume the required data time is passed as an argument 'data_time'
            data_time = kwargs.get('data_time', None) or (args[0] if args else None)
            if data_time is not None and data_time > instance._data_time:
                raise PermissionError(
                    "Access denied: data_time is later than the current _data_time.")
            return func(instance, *args, **kwargs)

        return wrapper


class Simulator(object):
    def __init__(self):
        self._state = None
        self._data = None
        self._data_time = None
        self._data_source = None
        self._data_update_interval = None

    @abstractmethod
    def refresh(self):
        # update the data of the current state to output
        pass

    @DataAccessValidator()
    def get_data(self, data_time=None):
        # validation whether the data accessed is allowed to be accessed
        # by default the accessed data time needs to be smaller than the current data time
        pass


class BaseSimulator(Simulator):
    def __init__(self):
        super(BaseSimulator, self).__init__()

    def refresh(self):
        self._data_time = self._data_time + self._data_update_interval
        self._data = self._data_source.get_data(self._data_time)
        pass

    @DataAccessValidator()
    def get_data(self, data_time=None):
        # validation whether the data accessed is allowed to be accessed
        # by default the accessed data time needs to be smaller than the current data time
        if data_time is None:
            return self._data
        else:
            return self._data_source.get_data(data_time)
