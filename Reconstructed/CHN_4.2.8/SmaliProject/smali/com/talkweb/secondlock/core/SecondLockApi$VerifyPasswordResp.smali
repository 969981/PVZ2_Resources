.class public Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;
.super Ljava/lang/Object;
.source "SecondLockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/secondlock/core/SecondLockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifyPasswordResp"
.end annotation


# instance fields
.field public lockedRemainSec:I

.field public remainAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;->remainAttempts:I

    .line 111
    iput v0, p0, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;->lockedRemainSec:I

    return-void
.end method
