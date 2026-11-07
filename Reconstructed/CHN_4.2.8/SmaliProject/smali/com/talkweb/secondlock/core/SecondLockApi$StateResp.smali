.class public Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;
.super Ljava/lang/Object;
.source "SecondLockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/secondlock/core/SecondLockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateResp"
.end annotation


# instance fields
.field public hasPassword:Z

.field public lockedRemainSec:I

.field public phoneBound:Z

.field public phoneMasked:Ljava/lang/String;

.field public spEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
