/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_bonus.h                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dhendzel <dhendzel@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/31 12:28:10 by dhendzel          #+#    #+#             */
/*   Updated: 2022/10/31 12:29:20 by dhendzel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_BONUS_H
# define GET_NEXT_LINE_BONUS_H

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 5
# endif

# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>
# include <fcntl.h>

char	*get_next_line(int fd);
char	*read_to_buf(int fd, char *buf);
int		found_nl(char *buf);
char	*buf_join(char *buf, char *tmp);
size_t	gn_strlen(const char *s);
char	*gn_set_buf(char *buf);
void	gn_free_buf(char **buf);
char	*extract_line(char *buf);
char	*shorten_buf(char *buf);

#endif
