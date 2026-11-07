.class public final Lgbsdk/common/host/abxn$ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ad"
.end annotation


# instance fields
.field public final aMl:[Ljava/security/cert/X509Certificate;

.field public final aMm:Lgbsdk/common/host/abxn$ac;

.field public fT:[B


# direct methods
.method public constructor <init>([Ljava/security/cert/X509Certificate;Lgbsdk/common/host/abxn$ac;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lgbsdk/common/host/abxn$ad;->aMl:[Ljava/security/cert/X509Certificate;

    .line 441
    iput-object p2, p0, Lgbsdk/common/host/abxn$ad;->aMm:Lgbsdk/common/host/abxn$ac;

    return-void
.end method
