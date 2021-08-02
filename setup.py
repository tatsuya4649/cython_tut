from setuptools import setup
from setuptools.extension import Extension
from Cython.Build import cythonize
import numpy

extensions = [
    Extension(
        "sample",
        ["sample.pyx"],
        include_dirs=['.',numpy.get_include()]
    )
]

setup(
    name="sample",
    ext_modules=cythonize(extensions),
    zip_safe=False,
)
