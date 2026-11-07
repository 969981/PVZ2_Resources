.class public final Lgbsdk/common/host/abvi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/volcengine/zeus/PluginClassLoader;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/volcengine/zeus/plugin/Plugin;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lcom/volcengine/zeus/PluginClassLoader;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/volcengine/zeus/GlobalParam;->enableClassLoaderOpt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1060
    invoke-static {}, Lgbsdk/common/host/acal;->j()Z

    move-result v0

    const-string v2, ""

    const-string v3, "Zeus/load_zeus"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 27
    new-instance p0, Lcom/volcengine/zeus/PluginClassLoader;

    invoke-direct {p0, v2, p2, p3, v1}, Lcom/volcengine/zeus/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 1065
    :try_start_0
    const-class p2, Ldalvik/system/BaseDexClassLoader;

    const-string p3, "addDexPath"

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    invoke-static {p2, p3, v0}, Lcom/volcengine/zeus/util/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v5

    .line 1067
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ClassLoaderFactory createPluginClassLoader#addDexPath success >>>"

    .line 1068
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p2

    .line 1070
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ClassLoaderFactory createPluginClassLoader#addDexPath fail >>>"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Lcom/volcengine/zeus/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 31
    :cond_0
    invoke-static {}, Lgbsdk/common/host/acal;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    iget-object p1, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result v0

    invoke-static {p1, v0}, Lgbsdk/common/host/abxf;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lgbsdk/common/host/abyh;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "useDirect:"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 38
    :goto_0
    new-instance p1, Lcom/volcengine/zeus/PluginClassLoader;

    invoke-direct {p1, v2, p2, p3, v1}, Lcom/volcengine/zeus/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v0, :cond_2

    .line 41
    iget-object p2, p0, Lcom/volcengine/zeus/plugin/Plugin;->mClassLoader:Lcom/volcengine/zeus/PluginClassLoader;

    iget-object p3, p0, Lcom/volcengine/zeus/plugin/Plugin;->mPkgName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/volcengine/zeus/plugin/Plugin;->getVersion()I

    move-result p0

    .line 2041
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pathList"

    invoke-static {v0, v1}, Lcom/volcengine/zeus/util/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2042
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2043
    invoke-static {p3, p0}, Lgbsdk/common/host/abyu;->u(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p0

    .line 2166
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "dexElements"

    invoke-static {p3, v0}, Lcom/volcengine/zeus/util/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    .line 2167
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, v0

    array-length v3, p0

    add-int/2addr v2, v3

    .line 2168
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 2170
    array-length v2, v0

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2171
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v5, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2172
    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    move-object p0, p1

    goto :goto_1

    .line 44
    :cond_3
    new-instance p0, Lcom/volcengine/zeus/PluginClassLoader;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/volcengine/zeus/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 51
    :cond_4
    new-instance p0, Lcom/volcengine/zeus/NativePluginClassLoader;

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/volcengine/zeus/NativePluginClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    return-object p0
.end method
