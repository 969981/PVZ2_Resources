.class Lcom/popcap/pvz2cthddev/AndroidViewContainer$3;
.super Landroid/webkit/WebViewClient;
.source "AndroidViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidViewContainer;->InitWebView(Landroid/content/Context;)Landroid/view/View;
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

    .line 192
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidViewContainer$3;->this$0:Lcom/popcap/pvz2cthddev/AndroidViewContainer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
