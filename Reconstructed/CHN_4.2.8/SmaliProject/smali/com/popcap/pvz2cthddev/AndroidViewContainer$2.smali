.class Lcom/popcap/pvz2cthddev/AndroidViewContainer$2;
.super Ljava/lang/Object;
.source "AndroidViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 160
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 164
    const-string p1, "ViewContainer"

    const-string v0, "clickCallJSBtn"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-static {p1}, Lcom/popcap/pvz2cthddev/AndroidViewContainer;->access$000(Lcom/popcap/pvz2cthddev/AndroidViewContainer;)Landroid/webkit/WebView;

    move-result-object p1

    const-string v0, "javascript:native_call_js()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
