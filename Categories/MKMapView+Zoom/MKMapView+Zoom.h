/*
 * MKMapView+Zoom.h
 *
 * Copyright 2011 Davide De Rosa
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *     http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MKMapView (Zoom)

- (void) zoomOnCurrentAnnotazionsIncludingUserLocation:(BOOL)includeUserLocation animated:(BOOL)animated;
- (void) zoomOnCurrentAnnotazionsIncludingUserLocation:(BOOL)includeUserLocation spanCorrection:(CGFloat)spanCorrection animated:(BOOL)animated;
- (void) zoomOnAnnotations:(NSArray *)customAnnotations animated:(BOOL)animated;
- (void) zoomOnAnnotations:(NSArray *)customAnnotations spanCorrection:(CGFloat)spanCorrection animated:(BOOL)animated;

@end
