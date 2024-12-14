NAME	= libftprintf.a

CC	= cc

CFLAGS	= -Wall -Wextra -Werror

AR	= ar rc

RM	= rm -Rf

SRC	= src

SRCS =	$(SRC)/ft_printf_dependency.c \
			$(SRC)/ft_printf_uns_dependecy.c \
			ft_printf.c \

OBJ =	$(SRCS:.c=.o)


$(NAME):$(OBJ)
		$(AR) $(NAME) $(OBJ)

all:	$(NAME)

%.o: %.c include/ft_printf.h
		$(CC) $(CFLAGS)  -c  $< -o $@

clean:
		$(RM) $(OBJ)

fclean: clean
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
