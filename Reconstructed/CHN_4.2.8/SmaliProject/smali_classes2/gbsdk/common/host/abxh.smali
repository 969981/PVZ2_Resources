.class public final Lgbsdk/common/host/abxh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "ApkSignatureVerify verify plugin signature error : "

    const-string v1, "Zeus/install_zeus"

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 43
    :try_start_0
    invoke-static {}, Lgbsdk/common/host/acal;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-static {p0}, Lgbsdk/common/host/abxm;->cM(Ljava/lang/String;)Lgbsdk/common/host/abzb;

    move-result-object v4

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lgbsdk/common/host/abxl;->cM(Ljava/lang/String;)Lgbsdk/common/host/abzb;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_2

    .line 49
    iget-object v2, v4, Lgbsdk/common/host/abzb;->aMv:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Lgbsdk/common/host/abzd; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_2
    invoke-static {p1}, Lcom/volcengine/zeus/Zeus;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object p1

    iget-object p1, p1, Lcom/volcengine/zeus/plugin/Plugin;->mSignature:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_7

    .line 58
    array-length v4, p1

    if-nez v4, :cond_3

    goto :goto_3

    .line 64
    :cond_3
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v7, v2, v5

    .line 65
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    :cond_4
    new-array v4, v6, [B

    .line 71
    array-length v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v5, :cond_5

    aget-object v9, v2, v7

    .line 72
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v10, v3, v4, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 79
    :cond_5
    invoke-static {v4, p1}, Lgbsdk/common/host/abzb;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " host:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " plugin:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v2

    .line 59
    :cond_7
    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApkSignatureVerify get hostSignature error : "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception p1

    .line 52
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method
