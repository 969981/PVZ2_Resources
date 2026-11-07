.class public Lcom/bytedance/applog/log/LogInfo$Category;
.super Ljava/lang/Object;
.source "LogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/log/LogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# static fields
.field public static final ABTEST:I = 0x2

.field public static final ALINK:I = 0x3

.field public static final COMPRESS:I = 0xe

.field public static final DATABASE:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final DEVICE_REGISTER:I = 0x1

.field public static final EVENT:I = 0x4

.field public static final EVENT_PRIORITY:I = 0xd

.field public static final EVENT_SAMPLING:I = 0xc

.field public static final EVENT_VERIFY:I = 0x6

.field public static final MONITOR:I = 0x8

.field public static final ONE_ID:I = 0xf

.field public static final PICKER:I = 0xa

.field public static final REQUEST:I = 0xb

.field public static final USER_PROFILE:I = 0x9

.field public static final VIEW_EXPOSURE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
