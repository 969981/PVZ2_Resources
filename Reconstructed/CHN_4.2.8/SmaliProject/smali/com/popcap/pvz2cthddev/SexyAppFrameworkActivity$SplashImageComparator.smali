.class public Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$SplashImageComparator;
.super Ljava/lang/Object;
.source "SexyAppFrameworkActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashImageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;)I
    .locals 0

    .line 1333
    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedArea()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;->GetIntendedArea()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1327
    check-cast p1, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    check-cast p2, Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;

    invoke-virtual {p0, p1, p2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$SplashImageComparator;->compare(Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;Lcom/popcap/pvz2cthddev/AndroidSplashScreen$SplashImage;)I

    move-result p1

    return p1
.end method
