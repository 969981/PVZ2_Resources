.class public Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;
.super Ljava/lang/Object;
.source "CheckOrderResultBean.java"


# instance fields
.field public checkOrderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;",
            ">;"
        }
    .end annotation
.end field

.field public code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/bean/CheckOrderResultBean;->checkOrderMap:Ljava/util/Map;

    return-void
.end method
