<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이템 상점</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <div class="user-shop-container">
        <div class="user-filter">
            <h2>카테고리</h2>
            <ul>
                <li><a href="#" data-category="all">전체 상품</a></li>
                <li><a href="#" data-category="clothing">무기</a></li>
                <li><a href="#" data-category="electronics">방어류</a></li>
                <li><a href="#" data-category="potions">포션</a></li>
                <!-- 다른 카테고리 항목 추가 -->
            </ul>
        </div>
        <div class="user-items">
            <!-- 상품 카드 1 -->
            <div class="user-item-card" data-category="clothing">
                <img src="item1.jpg" alt="Item 1">
                <h3>상품 이름 1</h3>
                <p>상품 아이디: ID1</p>
                <p>가격: $10</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 2 -->
            <div class="user-item-card" data-category="electronics">
                <img src="item2.jpg" alt="Item 2">
                <h3>상품 이름 2</h3>
                <p>상품 아이디: ID2</p>
                <p>가격: $20</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 3 -->
            <div class="user-item-card" data-category="potions">
                <img src="item3.jpg" alt="Item 3">
                <h3>상품 이름 3</h3>
                <p>상품 아이디: ID3</p>
                <p>가격: $15</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 4 -->
            <div class="user-item-card" data-category="clothing">
                <img src="item4.jpg" alt="Item 4">
                <h3>상품 이름 4</h3>
                <p>상품 아이디: ID4</p>
                <p>가격: $25</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 5 -->
            <div class="user-item-card" data-category="electronics">
                <img src="item5.jpg" alt="Item 5">
                <h3>상품 이름 5</h3>
                <p>상품 아이디: ID5</p>
                <p>가격: $30</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 6 -->
            <div class="user-item-card" data-category="potions">
                <img src="item6.jpg" alt="Item 6">
                <h3>상품 이름 6</h3>
                <p>상품 아이디: ID6</p>
                <p>가격: $12</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 7 -->
            <div class="user-item-card" data-category="clothing">
                <img src="item7.jpg" alt="Item 7">
                <h3>상품 이름 7</h3>
                <p>상품 아이디: ID7</p>
                <p>가격: $18</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 8 -->
            <div class="user-item-card" data-category="electronics">
                <img src="item8.jpg" alt="Item 8">
                <h3>상품 이름 8</h3>
                <p>상품 아이디: ID8</p>
                <p>가격: $22</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 9 -->
            <div class="user-item-card" data-category="potions">
                <img src="item9.jpg" alt="Item 9">
                <h3>상품 이름 9</h3>
                <p>상품 아이디: ID9</p>
                <p>가격: $9</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
            <!-- 상품 카드 10 -->
            <div class="user-item-card" data-category="clothing">
                <img src="item10.jpg" alt="Item 10">
                <h3>상품 이름 10</h3>
                <p>상품 아이디: ID10</p>
                <p>가격: $16</p>
                <p>간단한 설명: 이 상품은 예시 상품입니다.</p>
            </div>
            <!-- 다른 상품 카드 추가 -->
        </div>
    </div>
    <script type="text/javascript">
        const itemCards = document.querySelectorAll('.item-card');
        const filterLinks = document.querySelectorAll('.filter a');

        // 초기 화면 로딩 시 모든 아이템 표시
        filterItems('all');

        // 카테고리별 필터링
        filterLinks.forEach(link => {
            link.addEventListener('click', function (e) {
                e.preventDefault();
                const category = this.getAttribute('data-category');
                filterItems(category);
            });
        });

        function filterItems(category) {
            itemCards.forEach(card => {
                const cardCategory = card.getAttribute('data-category');
                if (category === 'all' || cardCategory === category) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });
        }
    </script>
</body>
</html>