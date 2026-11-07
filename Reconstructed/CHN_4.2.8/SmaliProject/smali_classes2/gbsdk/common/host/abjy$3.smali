.class public final Lgbsdk/common/host/abjy$3;
.super Ljava/lang/Object;
.source "CookiePolicy.java"

# interfaces
.implements Lgbsdk/common/host/abjy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abjy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;Lgbsdk/common/host/abiw;)Z
    .locals 0

    .line 33
    iget-object p2, p2, Lgbsdk/common/host/abiw;->domain:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lgbsdk/common/host/abiw;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
