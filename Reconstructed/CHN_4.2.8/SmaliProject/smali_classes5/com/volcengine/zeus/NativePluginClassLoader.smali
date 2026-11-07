.class public Lcom/volcengine/zeus/NativePluginClassLoader;
.super Lcom/volcengine/zeus/PluginClassLoader;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativePluginClassLoader"

.field private static final findClassMethod:Ljava/lang/reflect/Method;

.field private static final findLoadedClassMethod:Ljava/lang/reflect/Method;

.field private static final findResListMethod:Ljava/lang/reflect/Method;

.field private static final findResMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final hostClassLoader:Ljava/lang/ClassLoader;

.field private final mInnerClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    const-class v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "findClass"

    invoke-static {v0, v3, v2}, Lcom/volcengine/zeus/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findClassMethod:Ljava/lang/reflect/Method;

    .line 42
    const-class v0, Ljava/lang/ClassLoader;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "findLoadedClass"

    invoke-static {v0, v3, v2}, Lcom/volcengine/zeus/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findLoadedClassMethod:Ljava/lang/reflect/Method;

    .line 46
    const-class v0, Ldalvik/system/BaseDexClassLoader;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "findResources"

    invoke-static {v0, v3, v2}, Lcom/volcengine/zeus/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findResListMethod:Ljava/lang/reflect/Method;

    .line 48
    const-class v0, Ldalvik/system/BaseDexClassLoader;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "findResource"

    invoke-static {v0, v2, v1}, Lcom/volcengine/zeus/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findResMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, v0, v1, v0, p4}, Lcom/volcengine/zeus/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    const-class p4, Lcom/volcengine/zeus/NativePluginClassLoader;

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    iput-object p4, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->hostClassLoader:Ljava/lang/ClassLoader;

    .line 56
    invoke-static {}, Lcom/volcengine/zeus/NativePluginClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p4

    const-string v0, "NativePluginClassLoader"

    .line 55
    invoke-static {v0, p1, p2, p3, p4}, Lgbsdk/common/host/abxb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    .line 1088
    :try_start_0
    const-class p2, Ljava/lang/ClassLoader;

    const-string p3, "parent"

    invoke-static {p2, p3}, Lcom/volcengine/zeus/util/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1090
    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private findClassByInner(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    :try_start_0
    sget-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findClassMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 78
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "Class Not In FindClass By Inner"

    invoke-direct {v0, v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private findLoadedClassByInner(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 68
    :try_start_0
    sget-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findLoadedClassMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleException(Ljava/lang/StringBuilder;Ljava/lang/ClassNotFoundException;Ljava/lang/ClassNotFoundException;)Ljava/lang/ClassNotFoundException;
    .locals 2

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    .line 137
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 138
    invoke-virtual {p2, p3}, Ljava/lang/ClassNotFoundException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p3}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance p2, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method


# virtual methods
.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/volcengine/zeus/PluginClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/volcengine/zeus/PluginClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    sget-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findResMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/volcengine/zeus/PluginClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    sget-object v0, Lcom/volcengine/zeus/NativePluginClassLoader;->findResListMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInnerClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->mInnerClassLoader:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 88
    iget-object p2, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->allPluginClasses:Ljava/util/HashSet;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->allPluginClasses:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_2

    .line 91
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/volcengine/zeus/NativePluginClassLoader;->findLoadedClassByInner(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_2

    .line 95
    :try_start_1
    invoke-direct {p0, p1}, Lcom/volcengine/zeus/NativePluginClassLoader;->findClassByInner(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    :cond_2
    :goto_1
    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 102
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadClass from :\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 104
    iget-object v2, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->otherPluginClassLoader:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->otherPluginClassLoader:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 108
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 110
    invoke-direct {p0, v1, p2, v3}, Lcom/volcengine/zeus/NativePluginClassLoader;->handleException(Ljava/lang/StringBuilder;Ljava/lang/ClassNotFoundException;Ljava/lang/ClassNotFoundException;)Ljava/lang/ClassNotFoundException;

    move-result-object p2

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    .line 118
    :try_start_3
    iget-object v2, p0, Lcom/volcengine/zeus/NativePluginClassLoader;->hostClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 120
    invoke-direct {p0, v1, p2, v2}, Lcom/volcengine/zeus/NativePluginClassLoader;->handleException(Ljava/lang/StringBuilder;Ljava/lang/ClassNotFoundException;Ljava/lang/ClassNotFoundException;)Ljava/lang/ClassNotFoundException;

    move-result-object p2

    :cond_4
    :goto_4
    if-nez v0, :cond_6

    if-nez p2, :cond_5

    .line 125
    new-instance p2, Ljava/lang/ClassNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " class not found in PluginClassLoader"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 127
    :cond_5
    throw p2

    :cond_6
    return-object v0
.end method
