#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>
# include <stdarg.h>

void	ft_printf_putchar(char c, int *len);
void	ft_printf_putstr(char *str, int *len);
void	ft_printf_putnbr(int nb, int *len);
void	ft_printf_uns_putnbr(unsigned int nb, int *len);
void	ft_printf_uns_putpointer(void *p, int first, int *len);
void	ft_printf_puthex(unsigned int nb, int *len, char xhex);
int		ft_printf(const char *str, ...);

#endif
