.class public Lcom/bytedance/apm/common/utility/JellyBeanV16Compat;
.super Ljava/lang/Object;
.source "JellyBeanV16Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$V16Impl;,
        Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;
    }
.end annotation


# static fields
.field private static mImpl:Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 48
    new-instance v0, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$V16Impl;

    invoke-direct {v0, v1}, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$V16Impl;-><init>(Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$1;)V

    sput-object v0, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat;->mImpl:Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;

    invoke-direct {v0, v1}, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;-><init>(Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$1;)V

    sput-object v0, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat;->mImpl:Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTotalMem(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .line 59
    sget-object v0, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat;->mImpl:Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;

    invoke-virtual {v0, p0}, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;->getTotalMem(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat;->mImpl:Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/apm/common/utility/JellyBeanV16Compat$BaseImpl;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
