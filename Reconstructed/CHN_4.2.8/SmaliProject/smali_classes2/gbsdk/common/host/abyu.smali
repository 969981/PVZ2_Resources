.class public final Lgbsdk/common/host/abyu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:I

.field private static volatile aLu:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private static a(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 49
    sget v0, Lgbsdk/common/host/abyu;->a:I

    .line 51
    sget-object v1, Lgbsdk/common/host/abyu;->aLu:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    const-string v3, "dalvik.system.DexPathList$Element"

    .line 56
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v3, v2

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v1, :cond_1

    :try_start_1
    new-array v1, v5, [Ljava/lang/Class;

    .line 64
    const-class v10, Ljava/io/File;

    aput-object v10, v1, v6

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v1, v9

    const-class v10, Ljava/io/File;

    aput-object v10, v1, v8

    const-class v10, Ldalvik/system/DexFile;

    aput-object v10, v1, v7

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, 0x8

    goto :goto_1

    :catch_1
    move-object v1, v2

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    :try_start_2
    new-array v1, v7, [Ljava/lang/Class;

    .line 75
    const-class v10, Ljava/io/File;

    aput-object v10, v1, v6

    const-class v10, Ljava/util/zip/ZipFile;

    aput-object v10, v1, v9

    const-class v10, Ldalvik/system/DexFile;

    aput-object v10, v1, v8

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x4

    goto :goto_2

    :catch_2
    move-object v1, v2

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    :try_start_3
    new-array v1, v7, [Ljava/lang/Class;

    .line 86
    const-class v10, Ljava/io/File;

    aput-object v10, v1, v6

    const-class v10, Ljava/io/File;

    aput-object v10, v1, v9

    const-class v10, Ldalvik/system/DexFile;

    aput-object v10, v1, v8

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v0, 0x2

    goto :goto_3

    :catch_3
    move-object v1, v2

    :cond_3
    :goto_3
    if-nez v1, :cond_4

    :try_start_4
    new-array v1, v5, [Ljava/lang/Class;

    .line 97
    const-class v10, Ljava/io/File;

    aput-object v10, v1, v6

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v1, v9

    const-class v10, Ljava/io/File;

    aput-object v10, v1, v8

    const-class v10, Ldalvik/system/DexFile;

    aput-object v10, v1, v7

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v0, 0x1

    goto :goto_4

    :catch_4
    move-object v1, v2

    .line 107
    :cond_4
    :goto_4
    sput-object v1, Lgbsdk/common/host/abyu;->aLu:Ljava/lang/reflect/Constructor;

    .line 108
    sput v0, Lgbsdk/common/host/abyu;->a:I

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_6

    goto :goto_5

    :cond_5
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p0, v0, v6

    aput-object v2, v0, v9

    aput-object p1, v0, v8

    .line 123
    invoke-static {v1, v0}, Lgbsdk/common/host/abyu;->a(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    :cond_6
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v6

    .line 117
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p0, v0, v9

    aput-object v2, v0, v8

    aput-object p1, v0, v7

    invoke-static {v1, v0}, Lgbsdk/common/host/abyu;->a(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_5
    return-object v2
.end method

.method private static varargs a(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 7

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-static {p0, p1}, Lgbsdk/common/host/abxf;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {p0, p1}, Lgbsdk/common/host/abxw;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 151
    array-length p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    aget-object v4, v1, v3

    .line 153
    invoke-static {v4}, Lcom/volcengine/zeus/dex/DirectDex;->native_load_direct_dex(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lgbsdk/common/host/abyh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-static {v4, v5, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v5

    .line 158
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5}, Lgbsdk/common/host/abyu;->a(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 159
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
