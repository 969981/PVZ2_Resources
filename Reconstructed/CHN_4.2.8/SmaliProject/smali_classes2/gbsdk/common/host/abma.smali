.class public Lgbsdk/common/host/abma;
.super Ljava/lang/Object;
.source "URLRequest.java"


# instance fields
.field public is:Ljava/lang/String;

.field public ne:Ljava/lang/String;

.field public rL:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lgbsdk/common/host/abma;->is:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lgbsdk/common/host/abma;->ne:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lgbsdk/common/host/abma;->rL:I

    return-void
.end method
