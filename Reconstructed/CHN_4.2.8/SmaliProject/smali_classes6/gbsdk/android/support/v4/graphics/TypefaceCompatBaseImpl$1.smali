.class public Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl$1;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl;->findBestInfo([Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;I)Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl$StyleExtractor<",
        "Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl;


# direct methods
.method constructor <init>(Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl$1;->this$0:Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;)I
    .locals 0

    .line 74
    invoke-virtual {p1}, Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 0

    .line 71
    check-cast p1, Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl$1;->getWeight(Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;)I

    move-result p1

    return p1
.end method

.method public isItalic(Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;)Z
    .locals 0

    .line 79
    invoke-virtual {p1}, Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 0

    .line 71
    check-cast p1, Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;

    invoke-virtual {p0, p1}, Lgbsdk/android/support/v4/graphics/TypefaceCompatBaseImpl$1;->isItalic(Lgbsdk/android/support/v4/provider/FontsContractCompat$FontInfo;)Z

    move-result p1

    return p1
.end method
