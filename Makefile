PORTNAME=	dtarot
DISTVERSION=	2.7
CATEGORIES=	games
MASTER_SITES=	PYPI

MAINTAINER=	darthferrett@gmail.com
COMMENT=	Discordian Tarot reading generator
WWW=		https://github.com/lorimbrius/dtarot/

LICENSE=	CC0-1.0
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}setuptools>=0:devel/py-setuptools@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}wheel>=0:devel/py-wheel@${PY_FLAVOR}
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}numpy>=0,1:math/py-numpy@${PY_FLAVOR}

USES=		python shebangfix
USE_PYTHON=	distutils autoplist

SHEBANG_FILES=	dtarot

pre-install:
	${CP} ${WRKSRC}/dtarot.1.gz ${STAGEDIR}${PREFIX}/share/man/man1

.include <bsd.port.mk>
