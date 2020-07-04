//
//  HKActivitySummaryExtensions.swift
//  SwifterSwift
//
//  Created by Gilbert Lo on 7/3/20.
//  Copyright © 2020 SwifterSwift
//

#if canImport(HealthKit)
import HealthKit

// MARK: - Properties
@available(watchOS 2.2, *)
public extension HKActivitySummary {

    /// SwifterSwift: Check if stand goal is met
    var isStandGoalMet: Bool {
        return appleStandHoursGoal.compare(appleStandHours) != .orderedDescending
    }

    /// SwifterSwift: Check if exercise time goal is met
    var isExerciseGoalMet: Bool {
        return appleExerciseTimeGoal.compare(appleExerciseTime) != .orderedDescending
    }

    /// SwifterSwift: Check if active energy goal is met
    var isEnergyGoalMet: Bool {
        return activeEnergyBurnedGoal.compare(activeEnergyBurned) != .orderedDescending
    }

}

#endif
