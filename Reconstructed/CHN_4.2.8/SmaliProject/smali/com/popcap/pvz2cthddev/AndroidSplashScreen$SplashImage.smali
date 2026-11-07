.class public Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;
.super Ljava/lang/Object;
.source "AndroidSplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/AndroidSplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashImage"
.end annotation


# instance fields
.field private mIntendedDisplayRect:Landroid/graphics/Rect;

.field private mResourceID:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->mResourceID:I

    .line 59
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->mIntendedDisplayRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public GetIntendedArea()Ljava/lang/Integer;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->mIntendedDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->mIntendedDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public GetIntendedDisplayRect()Landroid/graphics/Rect;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->mIntendedDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public GetResourceID()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->mResourceID:I

    return v0
.end method
