.class public Lgbsdk/common/host/abis;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abis$ab;
    }
.end annotation


# static fields
.field static final lB:Lgbsdk/common/host/abis$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lgbsdk/common/host/abis$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abis$ab;-><init>(Lgbsdk/common/host/abis$1;)V

    sput-object v0, Lgbsdk/common/host/abis;->lB:Lgbsdk/common/host/abis$ab;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Lgbsdk/common/host/abjt;
    .locals 0

    .line 24
    sget-object p1, Lgbsdk/common/host/abis;->lB:Lgbsdk/common/host/abis$ab;

    invoke-virtual {p1, p0}, Lgbsdk/common/host/abis$ab;->D(Landroid/content/Context;)Lgbsdk/common/host/abjt;

    move-result-object p0

    return-object p0
.end method
