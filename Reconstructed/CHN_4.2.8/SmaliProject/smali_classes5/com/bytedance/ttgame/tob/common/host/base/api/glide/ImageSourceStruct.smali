.class public final Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;
.super Ljava/lang/Object;
.source "ImageSourceStruct.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B/\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;",
        "",
        "sourceUrl",
        "",
        "sourceFile",
        "Ljava/io/File;",
        "sourceDrawableResId",
        "",
        "sourceUri",
        "Landroid/net/Uri;",
        "(Ljava/lang/String;Ljava/io/File;Ljava/lang/Integer;Landroid/net/Uri;)V",
        "getSourceDrawableResId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSourceFile",
        "()Ljava/io/File;",
        "getSourceUri",
        "()Landroid/net/Uri;",
        "getSourceUrl",
        "()Ljava/lang/String;",
        "Companion",
        "ch_base_api_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct$Companion;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final sourceDrawableResId:Ljava/lang/Integer;

.field private final sourceFile:Ljava/io/File;

.field private final sourceUri:Landroid/net/Uri;

.field private final sourceUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->Companion:Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Integer;Landroid/net/Uri;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceUrl:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceFile:Ljava/io/File;

    .line 16
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceDrawableResId:Ljava/lang/Integer;

    .line 17
    iput-object p4, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Integer;Landroid/net/Uri;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Integer;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final getSourceDrawableResId()Ljava/lang/Integer;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceDrawableResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSourceFile()Ljava/io/File;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceFile:Ljava/io/File;

    return-object v0
.end method

.method public final getSourceUri()Landroid/net/Uri;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getSourceUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/base/api/glide/ImageSourceStruct;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method
