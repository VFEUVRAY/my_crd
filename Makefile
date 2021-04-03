##
## ETNA PROJECT, 01/04/2021 by feuvra_v
## Makefile
## File description:
##      Makefile for my_crd project
##

CC =	gcc -W -Wall -ansi -pedantic
NAME =	my_crd
SRC =	./list_handling/add_node.c \
		./list_handling/basic_creat_list.c \
		./list_handling/delete_inlist.c \
		./list_handling/display_data.c \
		./list_handling/lookup_node.c \
		./list_handling/my_crd.c \
		./misc/my_getnbr.c \
		./misc/my_readline.c \
		./misc/my_str_to_word_array.c
HED =	./include/my.h
OBJ =	$(SRC:%.c=%.o)
RM =	rm -f

$(NAME):	$(OBJ)
			$(CC) $(HED) $(OBJ) -o $(NAME)
all:	$(NAME)
clean:
		$(RM) $(OBJ)
fclean:	clean
		$(RM) $(NAME)
re:		fclean all