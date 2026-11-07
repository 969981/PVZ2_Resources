.class public Lgbsdk/common/host/abne;
.super Ljava/lang/Exception;
.source "HttpResponseException.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    iput p1, p0, Lgbsdk/common/host/abne;->a:I

    .line 12
    iput-object p2, p0, Lgbsdk/common/host/abne;->b:Ljava/lang/String;

    return-void
.end method
