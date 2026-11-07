.class public Lcom/bytedance/applog/exception/AppCrashType;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALL:I = 0x7fffffff

.field public static final JAVA:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCrashType(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasJavaCrashType(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bytedance/applog/exception/AppCrashType;->hasCrashType(II)Z

    move-result p0

    return p0
.end method
