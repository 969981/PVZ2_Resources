.class public Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;
.super Ljava/lang/Object;
.source "MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f.java"


# static fields
.field private static isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SLoad(Ljava/lang/String;)V
    .locals 3

    .line 9
    sget-object v0, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    sget-object p0, Lcom/ali/security/MinosSecurityLoad_16dba14f261cfe105b990854ef30de5f;->isLoadLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
