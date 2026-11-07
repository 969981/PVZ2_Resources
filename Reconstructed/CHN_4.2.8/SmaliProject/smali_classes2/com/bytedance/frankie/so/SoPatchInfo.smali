.class public Lcom/bytedance/frankie/so/SoPatchInfo;
.super Ljava/lang/Object;
.source "SoPatchInfo.java"


# static fields
.field public static final KEY_AUTO_LOAD:Ljava/lang/String; = "autoLoad"

.field public static final KEY_DEP_SO_NAMES:Ljava/lang/String; = "depSoNames"

.field public static final KEY_FORCE:Ljava/lang/String; = "force"

.field public static final KEY_IS_DIFF:Ljava/lang/String; = "isDiff"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_ORIGIN_MD5_GCC_A16:Ljava/lang/String; = "originMd5gccA16"

.field public static final KEY_ORIGIN_MD5_GCC_B16:Ljava/lang/String; = "originMd5gccB16"

.field public static final KEY_ORIGIN_MD5_LLVM_A20:Ljava/lang/String; = "originMd5llvmA20"


# instance fields
.field public autoLoad:Z

.field public depSoNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public force:Z

.field public isDiff:Z

.field public name:Ljava/lang/String;

.field public originMd5gccA16:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public originMd5gccB16:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public originMd5llvmA20:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/frankie/so/SoPatchInfo;->depSoNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public findMatchedStripTypeByMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Frankie"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "findMatchedStripTypeByMd5, md5 is empty"

    .line 41
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 44
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "findMatchedStripTypeByMd5, hostAbi is empty"

    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/bytedance/frankie/so/SoPatchInfo;->originMd5llvmA20:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "llvm-a20"

    return-object p1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/bytedance/frankie/so/SoPatchInfo;->originMd5gccA16:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "gcc-a16"

    return-object p1

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/bytedance/frankie/so/SoPatchInfo;->originMd5gccB16:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "gcc-b16"

    return-object p1

    :cond_4
    return-object v2
.end method
