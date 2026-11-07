.class public Lgbsdk/common/host/abln;
.super Lgbsdk/common/host/abmk;
.source "DefaultDispatchStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    sget-object v0, Lgbsdk/common/host/abmk$ab;->rf:Lgbsdk/common/host/abmk$ab;

    invoke-direct {p0, v0}, Lgbsdk/common/host/abmk;-><init>(Lgbsdk/common/host/abmk$ab;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method public b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cr()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
