.class public final Lgbsdk/common/host/abzr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abzr$ab;
    }
.end annotation


# static fields
.field private static final aMD:Lgbsdk/common/host/abzv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/Throwable;
    .locals 13

    const-string v0, "Zeus/install_zeus"

    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "useOpt;"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :try_start_0
    sget-object v3, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    const-string v2, "PluginInstaller"

    const-string v3, "install:"

    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abzu;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgbsdk/common/host/abzu;

    move-result-object v2

    .line 72
    sget-object v3, Lgbsdk/common/host/abya;->e:Ljava/lang/String;

    sget v4, Lgbsdk/common/host/abya$ab;->n:I

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v3 .. v9}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 74
    invoke-static {p1, p2}, Lgbsdk/common/host/abxw;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgbsdk/common/host/acbs;->a(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lgbsdk/common/host/abvl$ab;

    const/4 v4, 0x0

    .line 76
    new-instance v5, Lgbsdk/common/host/abzr$1;

    invoke-direct {v5, p0, p1, p2, v1}, Lgbsdk/common/host/abzr$1;-><init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lgbsdk/common/host/abzr$2;

    invoke-direct {v5, p0, p1, p2, v1}, Lgbsdk/common/host/abzr$2;-><init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    aput-object v5, v3, v4

    invoke-static {v3}, Lgbsdk/common/host/abvl;->a([Lgbsdk/common/host/abvl$ab;)V

    .line 125
    invoke-static {p0}, Lgbsdk/common/host/acbs;->a(Ljava/io/File;)V

    .line 128
    sget-object v6, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v7, Lgbsdk/common/host/abya$ab;->o:I

    invoke-virtual {v2}, Lgbsdk/common/host/abzu;->a()J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, p1

    move v9, p2

    invoke-static/range {v6 .. v12}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    const-string p0, "success"

    .line 129
    invoke-virtual {v2, p0}, Lgbsdk/common/host/abzu;->bd(Ljava/lang/String;)J

    .line 130
    sget-object v3, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v4, 0x44c

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 133
    instance-of v2, p0, Lgbsdk/common/host/abzr$ab;

    const-string v3, "PluginInstaller "

    if-eqz v2, :cond_0

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " install failed."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " install failed unknown error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    sget-object v3, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v4, Lgbsdk/common/host/abya$ab;->p:I

    const-wide/16 v7, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    move v6, p2

    invoke-static/range {v3 .. v9}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 138
    sget-object v2, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v3, 0x44c

    const/4 v4, -0x1

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method private static declared-synchronized a(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 10

    const-class v0, Lgbsdk/common/host/abzr;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lgbsdk/common/host/abxh;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    :try_start_2
    const-string p0, "checkSignature cost:"

    .line 172
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p0, ";"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    monitor-exit v0

    return-void

    .line 165
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v3, "\u5b89\u88c5\u5305\u7b7e\u540d\u6821\u9a8c\u5931\u8d25[1]"

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    :try_start_4
    sget-object v3, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v4, Lgbsdk/common/host/abya$ab;->q:I

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v3 .. v9}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 169
    sget-object v3, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v4, 0x44c

    const/4 v5, -0x3

    move-object v6, p1

    move v7, p2

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 170
    new-instance p1, Lgbsdk/common/host/abzr$ab;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {p1, p2, p0, v3}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    const-string p1, "checkSignature cost:"

    .line 172
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V
    .locals 4

    .line 300
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 301
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 302
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "status_code"

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_package_name"

    .line 305
    invoke-static {p2}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version_code"

    .line 306
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 307
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lgbsdk/common/host/abzx;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 308
    invoke-static {p6}, Lgbsdk/common/host/abzx;->s(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 310
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 312
    :goto_0
    invoke-static {}, Lgbsdk/common/host/abya;->hF()Lgbsdk/common/host/abya;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2, v1}, Lgbsdk/common/host/abya;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V
    .locals 11

    const-string v0, ";"

    const-string v1, "copySo cost:"

    .line 3245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3246
    invoke-static {p0, p1}, Lgbsdk/common/host/abxw;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3247
    invoke-static {p0, p1}, Lgbsdk/common/host/abxw;->n(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3249
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v4, p0, p2}, Lgbsdk/common/host/abxx;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3255
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3251
    :try_start_1
    sget-object v4, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v5, Lgbsdk/common/host/abya$ab;->dw:I

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v6, p0

    move v7, p1

    invoke-static/range {v4 .. v10}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 3252
    sget-object v4, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v5, 0x44c

    const/4 v6, -0x7

    move-object v7, p0

    move v8, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 3253
    new-instance p0, Lgbsdk/common/host/abzr$ab;

    const-string p1, "\u5b89\u88c5\u5305\u52a8\u6001\u5e93\u62f7\u8d1d\u5931\u8d25"

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3255
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3256
    throw p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 19

    move-object/from16 v0, p3

    .line 2145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2148
    new-instance v4, Lgbsdk/common/host/abzl;

    invoke-direct {v4}, Lgbsdk/common/host/abzl;-><init>()V

    new-instance v5, Ljava/io/File;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Lgbsdk/common/host/abzl;->a(Ljava/io/File;ZLjava/lang/StringBuilder;)I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_0

    const-string v7, "modifyRes"

    goto :goto_0

    :cond_0
    const-string v7, "noModifyRes"

    .line 2149
    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " cost:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v4, v5, :cond_2

    const/16 v0, 0xc8

    if-ne v4, v0, :cond_1

    goto :goto_1

    .line 2151
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2152
    sget-object v7, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v8, Lgbsdk/common/host/abya$ab;->x:I

    const-wide/16 v11, -0x1

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object v13, v0

    invoke-static/range {v7 .. v13}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 2153
    sget-object v13, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v14, 0x44c

    const/4 v15, -0x2

    const/16 v18, 0x0

    move-object/from16 v16, p1

    move/from16 v17, p2

    invoke-virtual/range {v13 .. v18}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 2154
    new-instance v1, Lgbsdk/common/host/abzr$ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modifyRes failed. result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorLog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;B)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p3

    const-string v2, "\u63d2\u4ef6\u5305\u5305\u542bso\u4e0d\u7b26\u5408\u5bbf\u4e3bABI\u7c7b\u578b"

    const-string v3, ";"

    const-string v4, "checkMatchHostAbi cost:"

    .line 177
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/volcengine/zeus/GlobalParam;->checkMatchHostAbi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 180
    :try_start_0
    invoke-static {p0}, Lgbsdk/common/host/abxx;->M(Ljava/io/File;)Lgbsdk/common/host/acbq;

    move-result-object v0

    .line 181
    iget-object v8, v0, Lgbsdk/common/host/acbq;->aE:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 182
    iget-object v0, v0, Lgbsdk/common/host/acbq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 192
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0

    .line 184
    :cond_0
    :try_start_1
    new-instance v0, Lgbsdk/common/host/abzr$ab;

    invoke-direct {v0, v2, v7}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;B)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    :try_start_2
    sget-object v8, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v9, Lgbsdk/common/host/abya$ab;->w:I

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-static/range {v8 .. v14}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 189
    sget-object v8, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v9, 0x44c

    const/4 v10, -0x5

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v0

    invoke-virtual/range {v8 .. v13}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 190
    new-instance v8, Lgbsdk/common/host/abzr$ab;

    invoke-direct {v8, v2, v0, v7}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;
    .locals 11

    const-string v0, ";"

    const-string v1, "copyApk cost:"

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 231
    invoke-static {p1, p2}, Lgbsdk/common/host/abxw;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 233
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lgbsdk/common/host/acbr;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    :try_start_1
    sget-object v4, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v5, Lgbsdk/common/host/abya$ab;->aLn:I

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v4 .. v10}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 237
    sget-object v4, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v5, 0x44c

    const/4 v6, -0x6

    move-object v7, p1

    move v8, p2

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 238
    new-instance p1, Lgbsdk/common/host/abzr$ab;

    const-string p2, "\u5b89\u88c5\u5305\u62f7\u8d1d\u5931\u8d25"

    const/4 v4, 0x0

    invoke-direct {p1, p2, p0, v4}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    throw p0
.end method

.method static synthetic d(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lgbsdk/common/host/abzr;->a(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    return-void
.end method

.method static synthetic e(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lgbsdk/common/host/abzr;->b(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 14

    move-object/from16 v1, p3

    const-string v0, "The following permissions are declared in the plugin but not in the host: "

    const-string v2, ";"

    const-string v3, "checkPermissions cost:"

    .line 1199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 1202
    :try_start_0
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1203
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1204
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1205
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_3

    .line 1206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v10, v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v12, v8, v11

    .line 1208
    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1209
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1212
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "PluginInstaller"

    .line 1213
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-static {}, Lcom/volcengine/zeus/GlobalParam;->getInstance()Lcom/volcengine/zeus/GlobalParam;

    move-result-object v7

    invoke-virtual {v7}, Lcom/volcengine/zeus/GlobalParam;->checkPermission()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 1215
    :cond_2
    new-instance v7, Lgbsdk/common/host/abzr$ab;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v6}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;B)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :cond_3
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1220
    :try_start_1
    sget-object v7, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v8, Lgbsdk/common/host/abya$ab;->r:I

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    move-object v9, p1

    move/from16 v10, p2

    invoke-static/range {v7 .. v13}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 1221
    sget-object v8, Lgbsdk/common/host/abzr;->aMD:Lgbsdk/common/host/abzv;

    const/16 v9, 0x44c

    const/4 v10, -0x4

    move-object v11, p1

    move/from16 v12, p2

    move-object v13, v0

    invoke-virtual/range {v8 .. v13}, Lgbsdk/common/host/abzv;->a(IILjava/lang/String;ILjava/lang/Throwable;)V

    .line 1222
    new-instance v7, Lgbsdk/common/host/abzr$ab;

    const-string v8, "\u5b89\u88c5\u5305\u6743\u9650\u6821\u9a8c\u5931\u8d25"

    invoke-direct {v7, v8, v0, v6}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1224
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1225
    throw v0
.end method

.method static synthetic g(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lgbsdk/common/host/abzr;->c(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 11

    const-string v0, ";"

    const-string v1, "saveExtraInfo cost:"

    .line 2288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2290
    :try_start_0
    invoke-static {p1, p2, p0}, Lgbsdk/common/host/acba;->a(Ljava/lang/String;ILjava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v2

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2292
    :try_start_1
    sget-object v4, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v5, Lgbsdk/common/host/abya$ab;->y:I

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v6, p1

    move v7, p2

    invoke-static/range {v4 .. v10}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 2293
    new-instance p1, Lgbsdk/common/host/abzr$ab;

    const-string p2, "saveExtraInfo\u5931\u8d25"

    const/4 v4, 0x0

    invoke-direct {p1, p2, p0, v4}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2295
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2296
    throw p0
.end method

.method static synthetic i(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p3

    const-string v1, ".dex"

    const-string v2, "classes"

    const-string v9, ";"

    const-string v10, "dexOpt cost:"

    const-string v5, "Zeus/install_zeus"

    .line 3260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3262
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/acal;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4055
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    const/4 v6, 0x0

    .line 4062
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipFile;

    move-object/from16 v14, p0

    invoke-direct {v7, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4063
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4066
    invoke-static/range {p1 .. p2}, Lgbsdk/common/host/abxw;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4067
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4068
    invoke-static {v15}, Lgbsdk/common/host/abxf;->a(Ljava/io/File;)V

    const/4 v13, 0x1

    .line 4075
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v16, ""

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    move-object/from16 v14, v16

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_1
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4078
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 4085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v9

    const/4 v9, 0x1

    if-ne v13, v9, :cond_1

    goto :goto_2

    :cond_1
    :try_start_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :goto_2
    move-object/from16 v9, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4090
    new-instance v9, Lgbsdk/common/host/abxf$ab;

    invoke-direct {v9, v15, v0}, Lgbsdk/common/host/abxf$ab;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v1

    const/4 v1, 0x0

    const/16 v16, 0x0

    :goto_3
    const/4 v0, 0x3

    if-ge v1, v0, :cond_4

    if-nez v16, :cond_4

    .line 4094
    :try_start_5
    invoke-static {v7, v14, v9, v2}, Lgbsdk/common/host/abxf;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lgbsdk/common/host/abxf$ab;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    const/16 v16, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .line 4097
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    const-string v14, "Plugin-MultiDex Failed to extract entry from "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v9}, Lgbsdk/common/host/abxf$ab;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4097
    invoke-static {v5, v0, v2}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 4105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Plugin-MultiDex Extraction "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_2

    const-string v2, "succeeded"

    goto :goto_5

    :cond_2
    const-string v2, "failed"

    .line 4106
    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4107
    invoke-virtual {v9}, Lgbsdk/common/host/abxf$ab;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v14, v1

    invoke-virtual {v9}, Lgbsdk/common/host/abxf$ab;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4105
    invoke-static {v5, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v16, :cond_3

    .line 4111
    invoke-virtual {v9}, Lgbsdk/common/host/abxf$ab;->delete()Z

    .line 4112
    invoke-virtual {v9}, Lgbsdk/common/host/abxf$ab;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin-MultiDex Failed to delete corrupted secondary dex \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4115
    invoke-virtual {v9}, Lgbsdk/common/host/abxf$ab;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4113
    invoke-static {v5, v0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v1, v14

    move-object/from16 v2, v19

    move-object/from16 v14, v20

    goto/16 :goto_3

    :cond_4
    move-object/from16 v19, v2

    if-eqz v16, :cond_5

    .line 4126
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v14, p0

    move-object/from16 v9, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 4122
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create zip file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgbsdk/common/host/abxf$ab;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for secondary dex ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v17, v9

    .line 4132
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4240
    invoke-static {}, Lgbsdk/common/host/abxf;->hO()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4241
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".dex.number"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4243
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4135
    :try_start_7
    invoke-static {v7}, Lgbsdk/common/host/acbs;->a(Ljava/util/zip/ZipFile;)V

    .line 3266
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abyh;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3267
    invoke-static {}, Lgbsdk/common/host/abxc;->a()V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v17, v9

    :goto_6
    move-object v6, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v17, v9

    .line 4135
    :goto_7
    invoke-static {v6}, Lgbsdk/common/host/acbs;->a(Ljava/util/zip/ZipFile;)V

    .line 4136
    throw v0

    :cond_7
    move-object/from16 v17, v9

    .line 4056
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not check apk info "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v17, v9

    .line 3268
    invoke-static {}, Lgbsdk/common/host/acal;->d()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lgbsdk/common/host/acal;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    .line 3273
    :cond_9
    invoke-static {}, Lgbsdk/common/host/acal;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3275
    invoke-static/range {p1 .. p2}, Lgbsdk/common/host/abxw;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3276
    invoke-static/range {p1 .. p2}, Lgbsdk/common/host/abxw;->l(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lgbsdk/common/host/abyh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lgbsdk/common/host/abyh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3271
    :cond_a
    :goto_8
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abyh;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3272
    invoke-static {}, Lgbsdk/common/host/abxc;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 3283
    :cond_b
    :goto_9
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v11

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-object/from16 v9, v17

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v9, v17

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v9, v17

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    .line 3280
    :goto_a
    :try_start_8
    sget-object v1, Lgbsdk/common/host/abya;->f:Ljava/lang/String;

    sget v2, Lgbsdk/common/host/abya$ab;->v:I

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v7}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V

    .line 3281
    new-instance v1, Lgbsdk/common/host/abzr$ab;

    const-string v2, "dexOpt\u5931\u8d25"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lgbsdk/common/host/abzr$ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 3283
    :goto_b
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3284
    throw v0
.end method
