.class public final Lgbsdk/common/host/abgr$2;
.super Ljava/lang/Object;
.source "AlogActiveUploadManager.java"

# interfaces
.implements Lgbsdk/common/host/abgt$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic fP:Lgbsdk/common/host/abgn;


# direct methods
.method constructor <init>([ILgbsdk/common/host/abgn;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lgbsdk/common/host/abgr$2;->a:[I

    iput-object p2, p0, Lgbsdk/common/host/abgr$2;->fP:Lgbsdk/common/host/abgn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZILjava/lang/Exception;Lorg/json/JSONObject;)V
    .locals 0

    .line 109
    invoke-static {p1, p2, p3, p4}, Lgbsdk/common/host/abgo;->b(ZILjava/lang/Exception;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1051
    invoke-static {p2}, Lgbsdk/common/host/abgo;->a(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lgbsdk/common/host/abgr$2;->a:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    add-int/lit8 p4, p4, 0x1

    aput p4, p2, p3

    if-nez p1, :cond_0

    .line 112
    aget p1, p2, p3

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    :cond_0
    return-void
.end method
