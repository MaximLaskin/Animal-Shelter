//
//  Animals.swift
//  Animal Shelter
//
//  Created by Swift on 07.09.2022.
//

import Foundation

struct Animal {
    let name: String // кличка
    let age: String // возраст

    let breed: String // порода
    let sex: String // Пол
    let weight: String // вес

    let description: String // краткое описание

    var nameAndBreed: String { // имя и порода для названия ячейки
        "\(name) - \(breed)"
    }
}

extension Animal {
    static func getDogsList() -> [Animal] {
        [
            Animal(
                name: "Норман",
                age: "2 года",
                breed: "Австралийский Келпи",
                sex: "Мальчик",
                weight: "4 кг",
                description: "Очень дружелюбный, молодой пес. Очень нуждается в любящей семье."),

            Animal(
                name: "Элен",
                age: "8 месяцев",
                breed: "Шпиц",
                sex: "Девочка",
                weight: "1,5 кг",
                description: "Очень ласковая и нежная, любит сидеть на ручках"),

            Animal(
                name: "Альберт",
                age: "4 года",
                breed: "Ротвейлер",
                sex: "Мальчик",
                weight: "12 кг",
                description: "Добрый, очень умный. Умеет ладить с детьми."),

            Animal(
                name: "Рокси",
                age: "3 года",
                breed: "Доберман",
                sex: "Девочка",
                weight: "7кг",
                description: "Рокси ищет любящую семью. Умная, знает несколько команд."),

            Animal(
                name: "Пинки",
                age: "2 года",
                breed: "Такса",
                sex: "Девочка",
                weight: "6 кг",
                description: "Добрая и ручная Пинки мечтает обрести свой дом.")
        ]
    }

    static func getCatsList() -> [Animal] {
        [
            Animal(
                name: "Мэри",
                age: "2 года",
                breed: "Британская длинношерстная",
                sex: "Девочка",
                weight: "3,5 кг",
                description: "Ласковая и умная кошечка ищет дом. "),

            Animal(
                name: "Скарлетт",
                age: "2 года",
                breed: "Британская короткошерстная",
                sex: "Девочка",
                weight: "3 кг",
                description: "Очень игручая кошечка ищет любящую семью"),

            Animal(
                name: "Габи",
                age: "1,5 года",
                breed: "Манчкин",
                sex: "Мальчик",
                weight: "2 кг",
                description: "Очень милый и добрый котик с короткими лапками"),

            Animal(
                name: "Маркиза",
                age: "6 лет",
                breed: "Персидская",
                sex: "Девочка",
                weight: "5 кг",
                description: "Взрослая кошечка ищет дом. Очень красивая и умная"),

            Animal(
                name: "Афина",
                age: "3 месяца",
                breed: "Невская Маскарадная",
                sex: "Девочка",
                weight: "500 г",
                description: "Милый котенок ищет себе новый дом. К лотку приучен")
        ]
    }
}
