.class public abstract Lgbsdk/common/host/abmm;
.super Ljava/lang/Object;
.source "LogHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abmm$ab;,
        Lgbsdk/common/host/abmm$ad;,
        Lgbsdk/common/host/abmm$ac;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field public f:J

.field public uW:Lgbsdk/common/host/abmm$ac;

.field protected uX:Lgbsdk/common/host/abmn;

.field public uY:Lgbsdk/common/host/abmm$ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgbsdk/common/host/abmm$ac;Lgbsdk/common/host/abmm$ad;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lgbsdk/common/host/abmm;->uW:Lgbsdk/common/host/abmm$ac;

    .line 132
    iput-object p3, p0, Lgbsdk/common/host/abmm;->uY:Lgbsdk/common/host/abmm$ad;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 139
    invoke-interface {p2}, Lgbsdk/common/host/abmm$ac;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lgbsdk/common/host/abmm;->c:Ljava/lang/String;

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 143
    invoke-static {p1}, Lgbsdk/common/host/abmn;->S(Landroid/content/Context;)Lgbsdk/common/host/abmn;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abmm;->uX:Lgbsdk/common/host/abmn;

    .line 144
    iget-object p2, p0, Lgbsdk/common/host/abmm;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lgbsdk/common/host/abmn;->a(Ljava/lang/String;Lgbsdk/common/host/abmm;)V

    return-void

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "responseConfig is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "config is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected a([BZ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 153
    invoke-static {p1}, Lgbsdk/common/host/abmo;->q(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abmm;->g([B)Z

    move-result p1

    return p1
.end method

.method protected abstract b(Ljava/lang/String;[B)Z
.end method

.method public g([B)Z
    .locals 2

    .line 163
    iget-object v0, p0, Lgbsdk/common/host/abmm;->uX:Lgbsdk/common/host/abmn;

    iget-object v1, p0, Lgbsdk/common/host/abmm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lgbsdk/common/host/abmn;->b(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method
