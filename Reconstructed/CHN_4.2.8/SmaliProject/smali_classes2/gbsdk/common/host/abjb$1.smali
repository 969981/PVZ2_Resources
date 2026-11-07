.class public Lgbsdk/common/host/abjb$1;
.super Ljava/lang/Object;
.source "SsOkHttp3Client.java"

# interfaces
.implements Lgbsdk/common/host/abls;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abjb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic nW:Lgbsdk/common/host/abjb;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abjb;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lgbsdk/common/host/abjb$1;->nW:Lgbsdk/common/host/abjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bW()[Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lgbsdk/common/host/abjb;->nS:[Ljava/lang/String;

    return-object v0
.end method

.method public bX()Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lgbsdk/common/host/abjb;->nR:Ljava/lang/String;

    return-object v0
.end method

.method public bY()[Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Lgbsdk/common/host/abjb;->nT:[Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 133
    sget v0, Lgbsdk/common/host/abjb;->nQ:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 123
    sget-object v0, Lgbsdk/common/host/abjb;->sContext:Landroid/content/Context;

    return-object v0
.end method
