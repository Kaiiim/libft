/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kkhalfao <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/12 11:16:42 by kkhalfao          #+#    #+#             */
/*   Updated: 2016/12/20 21:49:51 by kkhalfao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>
#include <string.h>

char	*ft_strjoin(char const *s1, char const *s2)
{
	int		k;
	int		p;
	char	*tmp;
	char	*ss1;
	char	*ss2;

	k = -1;
	p = 0;
	ss1 = (char *)s1;
	ss2 = (char *)s2;
	if (!s1 || !s2)
		return (NULL);
	if ((tmp = (char*)malloc(sizeof(char) * ((ft_strlen(s1) + \
											ft_strlen(s2)) + 1))) == 0)
		return (0);
	while (ss1[++k])
		tmp[k] = ss1[k];
	while (ss2[p])
	{
		tmp[p + k] = ss2[p];
		p++;
	}
	tmp[k + p] = '\0';
	return (tmp);
}
