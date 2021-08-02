from libc.stdio cimport printf

cdef class Hello:
    cdef public char *_hello
    cdef int a
    def __init__(self, greeting):
        self._hello = greeting

    def greeting(self):
        self.goodbye()
        print(self._hello)

    cdef goodbye(self):
        printf("hello\n")
