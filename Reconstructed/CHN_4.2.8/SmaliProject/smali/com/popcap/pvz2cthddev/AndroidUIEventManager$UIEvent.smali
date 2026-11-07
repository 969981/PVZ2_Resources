.class abstract Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;
.super Ljava/lang/Object;
.source "AndroidUIEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidUIEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "UIEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidUIEventManager;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidUIEventManager$UIEvent;->this$0:Lcom/popcap/pvz2cthddev/AndroidUIEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Serialize(Ljava/nio/ByteBuffer;)Z
.end method
