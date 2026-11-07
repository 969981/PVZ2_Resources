.class public Lgbsdk/common/host/abnd;
.super Ljava/lang/Object;
.source "MonitorHelper.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lgbsdk/common/host/abnd;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 19
    invoke-static {p0}, Lgbsdk/common/host/abmp;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "p"

    .line 21
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lgbsdk/common/host/abnd;->a:Ljava/lang/String;

    const-string v0, "."

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lgbsdk/common/host/abnd;->a:Ljava/lang/String;

    .line 24
    :cond_0
    sget-object p0, Lgbsdk/common/host/abnd;->a:Ljava/lang/String;

    return-object p0
.end method
