.class public Lcom/bytedance/common/util/JellyBeanMR1V16Compat;
.super Ljava/lang/Object;
.source "JellyBeanMR1V16Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/common/util/JellyBeanMR1V16Compat$V16Impl;,
        Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;
    }
.end annotation


# static fields
.field private static mImpl:Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBackgroundForView(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/bytedance/common/util/JellyBeanMR1V16Compat;->mImpl:Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;

    if-nez v0, :cond_2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 33
    new-instance v0, Lcom/bytedance/common/util/JellyBeanMR1V16Compat$V16Impl;

    invoke-direct {v0, v2}, Lcom/bytedance/common/util/JellyBeanMR1V16Compat$V16Impl;-><init>(Lcom/bytedance/common/util/JellyBeanMR1V16Compat$1;)V

    sput-object v0, Lcom/bytedance/common/util/JellyBeanMR1V16Compat;->mImpl:Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;

    invoke-direct {v0, v2}, Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;-><init>(Lcom/bytedance/common/util/JellyBeanMR1V16Compat$1;)V

    sput-object v0, Lcom/bytedance/common/util/JellyBeanMR1V16Compat;->mImpl:Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;

    .line 38
    :cond_2
    :goto_0
    sget-object v0, Lcom/bytedance/common/util/JellyBeanMR1V16Compat;->mImpl:Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/common/util/JellyBeanMR1V16Compat$BaseImpl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
