.class public final Lcom/talkweb/secondlock/core/SessionState;
.super Ljava/lang/Object;
.source "SessionState.java"


# static fields
.field private static volatile sVerifiedThisLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVerifiedThisLogin()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/talkweb/secondlock/core/SessionState;->sVerifiedThisLogin:Z

    return v0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/talkweb/secondlock/core/SessionState;->sVerifiedThisLogin:Z

    return-void
.end method

.method public static setVerifiedThisLogin(Z)V
    .locals 0

    .line 14
    sput-boolean p0, Lcom/talkweb/secondlock/core/SessionState;->sVerifiedThisLogin:Z

    return-void
.end method
