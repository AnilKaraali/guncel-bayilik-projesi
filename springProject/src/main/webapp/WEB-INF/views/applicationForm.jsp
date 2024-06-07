<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bayilik Başvuru Formu</title>
</head>
<body>
<h2>Bayilik Başvuru Formu</h2>
<form method="post" action="submitApplication">
    <table>
        <tr>
            <td>İsim Soyisim:</td>
            <td><form:input path="nameSurname" /></td>
        </tr>
        <tr>
            <td>TC Kimlik:</td>
            <td><form:input path="tcKimlik" /></td>
        </tr>
        <tr>
            <td>Adres:</td>
            <td><form:textarea path="address" /></td>
        </tr>
        <tr>
            <td>Telefon:</td>
            <td><form:input path="phone" /></td>
        </tr>
        <tr>
            <td>E-posta:</td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td>Doğum Tarihi:</td>
            <td><form:input path="birthDate" type="date" /></td>
        </tr>
        <tr>
            <td>Perakende Ticareti ile Uğraştınız mı?:</td>
            <td>
                <form:radiobutton path="retailExperience" value="Evet" /> Evet
                <form:radiobutton path="retailExperience" value="Hayır" /> Hayır
            </td>
        </tr>
        <tr>
            <td>Lokumcu Baba'yı Tercih Etmenizin Sebebi Nedir?:</td>
            <td><form:textarea path="reason" /></td>
        </tr>
        <tr>
            <td>Hangi İl/İlçe/Semt İçin Lokumcu Baba İşletmeciliği Düşünüyorsunuz?:</td>
            <td><form:input path="location" /></td>
        </tr>
        <tr>
            <td>Yatırım Miktarınız Nedir?:</td>
            <td><form:input path="investment" /></td>
        </tr>
        <tr>
            <td>Eklemek İstedikleriniz:</td>
            <td><form:textarea path="additionalNotes" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Başvur" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
