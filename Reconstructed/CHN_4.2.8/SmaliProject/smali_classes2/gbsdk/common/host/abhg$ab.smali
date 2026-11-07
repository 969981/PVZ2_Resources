.class public Lgbsdk/common/host/abhg$ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public fx:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgbsdk/common/host/abhg$ab;->fx:Ljava/io/InputStream;

    iput-object v0, p0, Lgbsdk/common/host/abhg$ab;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/common/host/abhg$ab;->c:Z

    iput-object p1, p0, Lgbsdk/common/host/abhg$ab;->fx:Ljava/io/InputStream;

    iput-object p2, p0, Lgbsdk/common/host/abhg$ab;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lgbsdk/common/host/abhg$ab;->c:Z

    return-void
.end method
