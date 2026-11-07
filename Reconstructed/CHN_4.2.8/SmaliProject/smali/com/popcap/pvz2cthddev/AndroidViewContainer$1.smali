.class Lcom/popcap/pvz2cthddev/AndroidViewContainer$1;
.super Ljava/lang/Object;
.source "AndroidViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidViewContainer;->InitCloseButton(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainer;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidViewContainer;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    const/4 p1, 0x0

    return p1
.end method
