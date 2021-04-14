# flake8: noqa

# import all models into this package
# if you have many models here with many references from one model to another this may
# raise a RecursionError
# to avoid this, import only the models that you directly need like:
# from from openapi_client.model.pet import Pet
# or import this package, but before doing it, use:
# import sys
# sys.setrecursionlimit(n)

from openapi_client.model.bad_request_foutbericht import BadRequestFoutbericht
from openapi_client.model.bad_request_foutbericht_all_of import BadRequestFoutberichtAllOf
from openapi_client.model.foutbericht import Foutbericht
from openapi_client.model.invalid_params import InvalidParams
from openapi_client.model.tabel import Tabel
from openapi_client.model.tabel_collectie import TabelCollectie
from openapi_client.model.waarde import Waarde
from openapi_client.model.waarde_all_of import WaardeAllOf
from openapi_client.model.waarde_collectie import WaardeCollectie
from openapi_client.model.waardetabel import Waardetabel
