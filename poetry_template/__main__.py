from typing import Iterator
import poetry_template


def fib(n: int) -> Iterator[int]:
    a, b = 0, 1

    while a < n:
        yield a
        a, b = b, a + b


print(poetry_template.__version__)
