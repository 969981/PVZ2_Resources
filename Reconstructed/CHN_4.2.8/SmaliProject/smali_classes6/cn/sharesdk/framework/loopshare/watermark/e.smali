.class public Lcn/sharesdk/framework/loopshare/watermark/e;
.super Ljava/lang/Object;
.source "Rom.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a()Z
    .locals 1

    .line 33
    const-string v0, "EMUI"

    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 75
    sget-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 79
    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string v0, "MIUI"

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "EMUI"

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const-string v0, "OPPO"

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_3
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    const-string v0, "VIVO"

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_4
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 88
    const-string v0, "SMARTISAN"

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_5
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    sput-object v1, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_6
    const-string v0, "unknown"

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->b:Ljava/lang/String;

    .line 95
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    .line 98
    :goto_0
    sget-object v0, Lcn/sharesdk/framework/loopshare/watermark/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "Unable to read prop "

    const-string v1, "getprop "

    const/4 v2, 0x0

    .line 105
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 106
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v3, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v2

    .line 110
    :goto_1
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    const-string v5, "ShareSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, v5, p0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 115
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v2

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_1

    .line 115
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    :cond_1
    :goto_4
    throw p0
.end method

.method public static b()Z
    .locals 1

    .line 41
    const-string v0, "VIVO"

    invoke-static {v0}, Lcn/sharesdk/framework/loopshare/watermark/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
