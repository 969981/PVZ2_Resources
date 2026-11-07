.class public Lcom/bytedance/applog/event/EventType;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EVENT_ALL:I = 0x7fffffff

.field public static final EVENT_CLICK:I = 0x8

.field public static final EVENT_PAGE:I = 0x4

.field public static final EVENT_PROFILE:I = 0x2

.field public static final USER_EVENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)Z
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
