/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strequ.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kkhalfao <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/11 19:35:38 by kkhalfao          #+#    #+#             */
/*   Updated: 2016/12/15 20:04:02 by kkhalfao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <string.h>

int		ft_strequ(char const *s1, char const *s2)
{
	char	*p1;
	char	*p2;

	if (!s1 || !s2)
		return (0);
	p1 = (char *)s1 - 1;
	p2 = (char *)s2 - 1;
	while (*(++p1) == *(++p2) && *p1 && *p2)
		;
	return (!(*p1) && !(*p2)) ? 1 : 0;
}
