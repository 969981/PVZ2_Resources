.class public Lcom/bytedance/common/util/LollipopV21Compat;
.super Ljava/lang/Object;
.source "LollipopV21Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/util/LollipopV21Compat$LollipopImpl;,
        Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;
    }
.end annotation


# static fields
.field private static mImpl:Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 55
    new-instance v0, Lcom/bytedance/common/util/LollipopV21Compat$LollipopImpl;

    invoke-direct {v0, v1}, Lcom/bytedance/common/util/LollipopV21Compat$LollipopImpl;-><init>(Lcom/bytedance/common/util/LollipopV21Compat$1;)V

    sput-object v0, Lcom/bytedance/common/util/LollipopV21Compat;->mImpl:Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;

    invoke-direct {v0, v1}, Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;-><init>(Lcom/bytedance/common/util/LollipopV21Compat$1;)V

    sput-object v0, Lcom/bytedance/common/util/LollipopV21Compat;->mImpl:Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    .locals 1

    .line 66
    sget-object v0, Lcom/bytedance/common/util/LollipopV21Compat;->mImpl:Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public static setMixedContentMode(Landroid/webkit/WebSettings;I)V
    .locals 1

    .line 62
    sget-object v0, Lcom/bytedance/common/util/LollipopV21Compat;->mImpl:Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/util/LollipopV21Compat$BaseImpl;->setMixedContentMode(Landroid/webkit/WebSettings;I)V

    return-void
.end method
