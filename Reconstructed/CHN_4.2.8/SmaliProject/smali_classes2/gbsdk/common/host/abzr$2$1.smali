.class public final Lgbsdk/common/host/abzr$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbsdk/common/host/abvl$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzr$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic aMJ:Lgbsdk/common/host/abzr$2;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abzr$2;Ljava/util/Map;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lgbsdk/common/host/abzr$2$1;->aMJ:Lgbsdk/common/host/abzr$2;

    iput-object p2, p0, Lgbsdk/common/host/abzr$2$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 105
    iget-object v0, p0, Lgbsdk/common/host/abzr$2$1;->aMJ:Lgbsdk/common/host/abzr$2;

    iget-object v0, v0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abzr$2$1;->aMJ:Lgbsdk/common/host/abzr$2;

    iget v1, v1, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v2, p0, Lgbsdk/common/host/abzr$2$1;->a:Ljava/util/Map;

    iget-object v3, p0, Lgbsdk/common/host/abzr$2$1;->aMJ:Lgbsdk/common/host/abzr$2;

    iget-object v3, v3, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V

    return-void
.end method
