.class Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingOperation"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mOperation:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->this$0:Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->mOperation:Ljava/lang/Runnable;

    .line 211
    iput-object p3, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/Runnable;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/GooglePlayPurchaseDriver$PendingOperation;->mOperation:Ljava/lang/Runnable;

    return-object v0
.end method
