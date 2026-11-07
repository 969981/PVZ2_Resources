.class public Lgbsdk/optional/applog/aber$ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/aber$ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/aber;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/optional/applog/aber$ai<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/aber;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/aber;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/aber$ac;->a:Lgbsdk/optional/applog/aber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lgbsdk/optional/applog/aber$ac;->a:Lgbsdk/optional/applog/aber;

    const-string v1, "clientudid"

    invoke-virtual {v0, v1}, Lgbsdk/optional/applog/aber;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Lgbsdk/optional/applog/aber;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3, p1, p2}, Lgbsdk/optional/applog/aber;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lgbsdk/optional/applog/aber$ac;->a:Lgbsdk/optional/applog/aber;

    const-string v1, "clientudid"

    invoke-virtual {v0, v1, p1}, Lgbsdk/optional/applog/aber;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lgbsdk/optional/applog/abce;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-static {p1}, Lgbsdk/optional/applog/abce;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
